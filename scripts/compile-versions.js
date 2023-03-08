const path = require("path");
const fse = require("fs-extra");
const commander = require("commander");

const versions = require(path.resolve(__dirname, "../versions.json"));

commander
  .usage("[OPTIONS]")
  .requiredOption("-t, --tag <value>", "tag version of docs")
  .parse(process.argv);

const options = commander.opts();

const { tag } = options;

const uniqueVersions = new Set(versions);
uniqueVersions.add(tag);

async function main() {
  await fse.writeJson(
    path.resolve(__dirname, "../versions.json"),
    Array.from(uniqueVersions.values()),
    {
      encoding: "utf-8",
    }
  );

  await fse.copy(
    path.resolve(
      __dirname,
      "../versioned_sidebars/version-template-sidebars.json"
    ),
    path.resolve(
      __dirname,
      `../versioned_sidebars/version-${tag}-sidebars.json/`
    )
  );
}

main();
