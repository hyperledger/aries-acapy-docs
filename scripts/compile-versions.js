const commander = require("commander");

commander
  .usage("[OPTIONS]")
  .requiredOption("-t, --tag <value>", "tag version of docs")
  .parse(process.argv);

const options = commander.opts();
