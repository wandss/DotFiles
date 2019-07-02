const path = require('path')

module.exports = {
  productionSourceMap: false,  
  outputDir: path.resolve(__dirname, process.env.VUE_APP_BUILD_PATH),
  indexPath: path.resolve(__dirname, process.env.VUE_APP_INDEX_PATH),  
  publicPath: process.env.VUE_APP_PUBLIC_PATH
  devServer: {
    proxy: 'http://0.0.0.0:8001
  }
}  
