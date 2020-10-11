module.exports = {
  mount: {
    'app/assets/images': '/app/images',
    'app/assets/javascript': '/app/javascript',
    'app/assets/stylesheets': '/app/stylesheets',
  },
  aliases: {
    'images': './app/images',
  },
  devOptions: {
    out: './public/assets',
  }
}
