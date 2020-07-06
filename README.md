A fully fledged [pokéapi](https://pokeapi.co/) dart/flutter library

# Available models

All endpoints available in [the docs](https://pokeapi.co/docs/v2) are also available in this lib as models with the exact same name. All of them have the exact same property names¹ and they'll have the `find` and `get` methods available

There's also a multitude of auxiliary models available, but they do not represent endpoints; they are included to facilitate your workflow. All of them have the exact same property names¹ and none of them will have the `find` and `get` methods available

¹ except when they're called 'default' as it is a dart protected word

# Methods

    find([int limit = 0, int skip = 0])

Will return an instance of `NamedApiResourceList` or `ApiResourceList` containing the results of the query to that specific endpoint. `limit` represents the number of results you want in that specific request and `skip` the number of results you want to skip over

    get(String query)

Will return an instance of the model you called it from. `query` should be an id or name, depending on the model you called this method from

# Using

## import

    import 'package:pokeapi_dart_lib/pokeapi_dart_lib.dart';

## examples

### getting a specific pokémon

    final Pokemon pokemon = await Pokemon.get('bulbasaur');

    print(pokemon.name);

or

    Pokemon.get('bulbasaur').then((pokemon) {
      print(pokemon.name);
    })

### finding all pokémons

    final NamedApiResourceList pokemon = await Pokemon.find();

    print(pokemon.results);

or

    Pokemon.find().then((pokemon) {
      print(pokemon.results);
    })

# TODO

- The package description is too short. (-20 points)

  Add more detail to the `description` field of `pubspec.yaml`. Use 60 to 180 characters to describe the package, what it does, and its target use case.

- Maintain an example. (-10 points)

  Create a short demo in the `example/` directory to show how to use this package.

  Common filename patterns include `main.dart`, `example.dart`, and `pokeapi_dart_lib.dart`. Packages with multiple examples should provide `example/README.md`.

  For more information see the [pub package layout conventions](https://www.dartlang.org/tools/pub/package-layout#examples).
