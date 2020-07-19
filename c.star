# c.star
# set the foo annotation on each resource
def run(r, an):
  for resource in r:
    # mutate the resource
    resource["metadata"]["annotations"]["someFoo"] = an

# get the value of the annotation to add
an = ctx.resource_list["functionConfig"]["data"]["value"]

run(ctx.resource_list["items"], an)