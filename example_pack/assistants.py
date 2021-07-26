from kodexa import Assistant, AssistantResponse, AssistantContext
from kodexa.model.model import BaseEvent


class ExampleAssistant(Assistant):
    """
    This is an example of an assistant
    """

    def __init__(self, my_param: str):
        self.my_param = my_param

    def process_event(self, event: BaseEvent, context: AssistantContext) -> AssistantResponse:
        pass
