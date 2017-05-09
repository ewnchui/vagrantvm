require 'angular-translate'
require 'angular-translate-loader-static-files'

angular

  .module 'locale', [
    'pascalprecht.translate'
  ]
  
  .config ($translateProvider) ->
    $translateProvider
      .useSanitizeValueStrategy 'escape'

  .config ($translateProvider) ->
    $translateProvider
      .useStaticFilesLoader
        prefix: 'locale/'
        suffix: '.json'
      .registerAvailableLanguageKeys ['en', 'zh_TW'],
        'en_*': 'en'
        'zh_*': 'zh_TW'
      .determinePreferredLanguage()
      .fallbackLanguage 'en'
