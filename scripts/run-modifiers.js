const path = require("path");
const fse = require("fs-extra");
const commander = require("commander");

commander
  .usage("[OPTIONS]")
  .option("-t, --tag <value>", "tag version of docs")
  .parse(process.argv);

async function main() {
  const options = commander.opts();
  const { tag } = options;

  let modification, modifierPath;
  if (tag) {
    modifierPath = `../modifiers/${tag}.js`;
    modification = require(path.resolve(__dirname, modifierPath));
    if (!modification) {
      throw new Error(`Could not find modifiers for tag ${tag}`);
    }
  } else {
    modifierPath = `../modifiers/main.js`;
    modification = require(path.resolve(__dirname, modifierPath));
    if (!modification) {
      throw new Error("Could not find modifiers for main");
    }
  }

  const modificationMap = new Map(Object.entries(modification));
  for (const [filePath, { title, modifiers }] of modificationMap.entries()) {
    let file = await fse.readFile(filePath, { encoding: "utf-8" });

    if (modifiers) {
      //   Perform all text replacement in modifiers
      const modifierMap = new Map(Object.entries(modifiers));
      for (const [test, replacement] of modifierMap.entries()) {
        file = file.replaceAll(test, replacement);
      }
    }

    //   Write file modifications out
    await fse.writeFile(
      filePath,
      title ? "---\ntitle: " + title + "\n---\n\n" + file : file,
      { encoding: "utf-8" }
    );
  }
}

main();
