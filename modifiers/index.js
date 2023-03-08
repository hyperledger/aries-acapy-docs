const fse = require("fs-extra");

const modifications = [require("./main")];

(async function () {
  for await (const modification of modifications) {
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
})();
