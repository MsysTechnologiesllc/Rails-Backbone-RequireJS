define ['backbone'], (Backbone) ->
  class ChildView extends Backbone.View
    # template: _.template("""<div style="background-color: red">
    #   <div> Hey <%= userName %>, you just created a new Backbone child view</div>
    # </div>""")

    initialize: ->
      @username = @options.username

      # Lets just render the view on creation.
      @render()

    # render: ->
    #   variables = {username: @username}

    #   # Load the compiled HTML into the Backbone "el"
    #   @$el.html( @template(variables) );


    render: ->
      # _.templateSettings = {
      #   interpolate : /\{\{=(.+?)\}\}/g,
      #   escape : /\{\{-(.+?)\}\}/g,
      #   evaluate: /\{\{(.+?)\}\}/g,
      # }
      # Compile the template using underscore
      template = _.template( $("#child_view_template").html(), {username: @username} )
      # Load the compiled HTML into the Backbone "el"
      @$el.html( template );