define ['views/home'], (HomeView) ->

  # Start up the app once the DOM is ready
  $ ->
    alert "The app has started with requirejs. yay!!"

    _.templateSettings = {
        interpolate : /\{\{=(.+?)\}\}/g,
        escape : /\{\{-(.+?)\}\}/g,
        evaluate: /\{\{(.+?)\}\}/g,
    }

    # Now lets render the Home view.
    new HomeView({ el: $("#TheApp") })
