for item in range(50,100):
    with open("{}.json".format(item), "w") as f:
        f.write('{\n')
        f.write('	"parent": "item/generated",\n')
        f.write('	"textures": {\n')
        f.write('		"layer0": "computercraft/controls/{}"\n'.format(item))
        f.write("	}\n")
        f.write("}")
        f.close()