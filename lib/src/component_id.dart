class ComponentID {
  ComponentID(this.id);

  final int id;

  bool isAdded() => id > 0;

  ComponentID withoutAge() {
    if (id > 0) {
      return this;
    }
    return ComponentID(-id);
  }

  ComponentID oldComponentID() {
    assert(!isAdded());
    return ComponentID(-id);
  }

  @override
  String toString() {
    return "ComponentID($id)";
  }

  String toHTML() => id.toString();
}
