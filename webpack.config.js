import path from 'path';
import { fileURLToPath } from 'url';
import MiniCssExtractPlugin from 'mini-css-extract-plugin';

const __dirname = path.dirname(fileURLToPath(import.meta.url));

const getPath = (filepath) => path.resolve(__dirname, `app/${filepath}`);

export default {
  entry: {
    application: [
      getPath('javascript/application.js'),
      getPath('assets/stylesheets/application.scss'),
    ],
  },
  output: {
    path: path.resolve(__dirname, 'app/assets/builds'),
  },
  plugins: [
    new MiniCssExtractPlugin(),
  ],
  module: {
    rules: [
      {
        test: /\.(sa|sc|c)ss$/,
        use: [
          MiniCssExtractPlugin.loader,
          'css-loader',
          'postcss-loader',
          'sass-loader',
        ],
      },
    ],
  },
};
