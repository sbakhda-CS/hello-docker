from cortex_client import InputMessage, OutputMessage


# the entry point of your model
def main(params):
    try:
        msg = InputMessage.from_params(params)
        text = msg.payload.get('text')
        return OutputMessage.create().with_type('cortex/Text').with_payload({'text':  'Echo: '+ text}).to_params()
    except:
        return OutputMessage.create().with_type('cortex/Text').with_payload({'text': 'error: ' + params}).to_params()


