module.exports = {
  mount: {
    'app/assets/javascript': '/app/javascript',
    'vendor/javascript': '/app/vendor',
  },
  alias: {
    'lib1': './vendor/javascript/lib1',
    'lib2': './vendor/javascript/lib2',
  },
  devOptions: {
    out: './public/assets',
  }
}
