module.exports = {
  name: () => {
    // Use the current directory name as the default package name
    const path = require('path');
    return path.basename(process.cwd());
  },
  version: () => '1.0.0',
  description: () => '',
  main: () => 'index.js',
  license: () => 'MIT',
  author: () => 'Dylan Lynch <paste.io@proton.me>',
  dependencies: () => ({}),
  devDependencies: () => ({}),
};
