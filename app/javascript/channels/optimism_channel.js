import consumer from './consumer'
import CableReady from 'cable_ready'

consumer.subscriptions.create('OptimismChannel', {
  received (data) {
    console.log('data received')
    if (data.cableReady)
      CableReady.perform(data.operations, {
        emitMissingElementWarnings: false
      })
  }
})
