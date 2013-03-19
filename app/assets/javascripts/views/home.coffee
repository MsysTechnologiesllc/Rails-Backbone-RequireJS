# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

define ['backbone', 'views/child-view'], (Backbone, ChildView) ->
  class HomeView extends Backbone.View

    template: _.template("""<div style="margin: 150px 0 0 150px">
      <p> Hello from an Backbone app.</p>
      <button id= "createview" type="button" disabled> Create a new Backbone view </button>
      <input id="username" type="text" value="Please enter your name..."> </input>
      <div id="child_view"> </div>
    </div>""")

    events:
      'click input#username': 'clearInput'
      'keyup input#username': 'editName'
      'click button#createview': 'createView'

    initialize: ->
      # Lets just render the view on creation.
      @render()

    render: ->
      # Load the compiled HTML into the Backbone "el"
      @$el.html( @template() );

    clearInput: (evt) ->
      evt.preventDefault()
      @$(evt.currentTarget).val('')
      @$('#createview').attr('disabled', 'disabled')

    editName: (evt) ->
      evt.preventDefault()
      if @$('#username').val().length
        @$('#createview').removeAttr('disabled')
      else
        @$('#createview').attr('disabled', 'disabled')
      
    createView: (evt) ->
      evt.preventDefault()
      username = @$("#username").val()
      new ChildView({ el: $("#child_view") , username: username})