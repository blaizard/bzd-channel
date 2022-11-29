CounterProvider = provider(
    fields = {
        "value": "The number of dependencies."
    }
)

def _counter_aspect_impl(target, ctx):

    value = 1
    for dep in ctx.rule.attr.deps:
        value += dep[CounterProvider].value
    return [CounterProvider(value = value)]

counter_aspect = aspect(
    implementation = _counter_aspect_impl,
    attr_aspects = ["deps"],
)

def _dep_counter_impl(ctx):

    for target in ctx.attr.targets:
        print(target.label, target[CounterProvider].value)

    return []

dep_counter = rule(
    implementation = _dep_counter_impl,
    attrs = {
        "targets": attr.label_list(aspects = [counter_aspect]),
    }
)
