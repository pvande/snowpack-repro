module.exports = {
  mount: {
    'app/assets/images': '/app/images',
    'app/assets/javascript': '/app/javascript',
    'app/assets/stylesheets': '/app/stylesheets',
  },
  alias: {
    'images': './app/assets/images',
  },
  devOptions: {
    out: './public/assets',
  }
}
