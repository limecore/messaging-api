from .handler import Handler


class Subscriber:
    def add_subscription(self, impl: Handler, queue: str, routing_key: str):
        raise NotImplementedError()

    def run(self):
        raise NotImplementedError()
