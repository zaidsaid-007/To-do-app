actor {
 module {
  public type TodoItem = {
    id: Nat;
    text: Text;
    completed: Bool;
  };

  public type TodoList = [TodoItem];

  public func init() : async TodoList {
    [];
  };

  public func add(todo: Text) : async () {
    let list = await this;
    let newItem = {id = Array.length(list) + 1; text = todo; completed = false};
    [] # [newItem];
  };
};
