class Pokemon {
  final int id;
  final String name;
  final int baseExperience;
  final int height;
  final int weight;

  Pokemon._builder(PokemonBuilder builder)
      : id = builder.id,
        name = builder.name,
        baseExperience = builder.baseExperience,
        height = builder.height,
        weight = builder.weight;
}

class PokemonBuilder {
  final int id;
  final String name;

  PokemonBuilder(this.id, this.name);

  int baseExperience;
  int height;
  int weight;

  Pokemon build() {
    return Pokemon._builder(this);
  }
}
