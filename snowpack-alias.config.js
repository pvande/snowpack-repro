module.exports = {
  mount: {
    'app/assets/javascript': '/app/javascript',
  },
  alias: {
    'lib1': './vendor/javascript/lib1',
    'lib2': './vendor/javascript/lib2',
  },
  devOptions: {
    out: './public/assets',
  }
}
