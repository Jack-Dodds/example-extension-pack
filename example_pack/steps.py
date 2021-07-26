from kodexa import Document, PipelineContext


class ExampleStep:

    def __init__(self, example_option: str):
        self.example_option = example_option

    def get_name(self):
        return "Example Step"

    def process(self, document: Document, pipeline_context: PipelineContext):
        return document
