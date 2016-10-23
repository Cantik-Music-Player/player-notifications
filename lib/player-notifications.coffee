module.exports =
class PlayerNotifications
  constructor: (@cantik) ->

  activate: (state) ->
    @cantik.pluginManager.plugins.player.on('track_changed', @notify)

  deactivate: ->
    @cantik.pluginManager.plugins.player.removeListener('track_changed', @notify);

  serialize: ->

  notify: (new_track) ->
    new Notification(track.metadata.title, {
      body: track.metadata.artist[0]
    })
