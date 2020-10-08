module.exports = {
  mount: {
    'app/assets/javascript': '/app/javascript',
  },
  alias: {
    'lib1': './app/javascript/vendor/lib1',
    'lib2': './app/javascript/vendor/lib2',
  },
  devOptions: {
    out: './public/assets',
  }
}
