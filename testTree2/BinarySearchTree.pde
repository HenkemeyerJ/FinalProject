class BinarySearchTree {

  private TreeNode root;
  private TreeNode current;

  public BinarySearchTree() {
    root = null;
  }

  TreeNode buildTree() {
    
    root = new TreeNode("You find youself on a deserted island. From what you can tell, the island is large and you are alone. You realize that you'll need resources if you want to live, but you don't want to be alone. Do you look for shelter (left) or do you look for other people (right)?");
    
    //level one
    root.setLeft(new TreeNode("You sucessfully find a location that would make for a strong shelter near the beach. Now you must determine what's next. Do you get food (left) or do you get water (right)?"));
    root.setRight(new TreeNode("While looking for any other survivors, you come across a tribe of island natives. You're feel relieved until they pull spears on you. Some force hits the back of your head, and you wake up hours later tied up to a post. Do you be patient (left) or do you try to break free (right)?"));
    
    //level two
    root.getLeft().setLeft(new TreeNode("While searching in the woods, you come across a boar. With a rock in hand, you attempt to bash the boar, but it moves too fast. It leaves a gash on your leg, and runs off. Do you go back to the shelter to check your leg (left) or do you continue after the boar (right)?"));
    root.getRight().setRight(new TreeNode("Knowing the rope is frayed, you rub it up and down on the post. Feeling the rope snap, you quickly stand up and move to the entrance of the tent. As you leave the camp, one of the guards notices you. You start running, and need to find a place to hide. Do you hide in a cave (left) or do you hide in on the mountain (right)?"));
    root.getLeft().setRight(new TreeNode(""));
    root.getRight().setLeft(new TreeNode("You don't know how strong the rope is, or what waits you after you get out, so you decide to wait. "));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("You go back to your shelter to check out your leg. Realizing it needs to be patched, you give yourself first aid using some leaves. It starts to feel better, but after several hours, it gets warm and gooey. That night you pass away from an infection left by the boar. You died."));
    root.getLeft().getLeft().setRight(new TreeNode("Chasing after the boar, "));
    root.getLeft().getRight().setLeft(new TreeNode(""));
    root.getLeft().getRight().setRight(new TreeNode(""));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("Quickly scaling the mountain. You see that none of the "));
    root.getRight().getRight().setLeft(new TreeNode("The cave was the quickest and most logical choice. Unfortunately, the natives thought the same thing. You are capture and executed. You died."));
    root.getRight().getLeft().setLeft(new TreeNode(""));
    root.getRight().getLeft().setRight(new TreeNode(""));
    current = root;
    return current;
  }

  TreeNode returnTree() {
    current = root;
    return root;
  }

  private void inorder() {
    inorder(root);
  }

  public void inorder(TreeNode t) {
    if (t!=null) {
      inorder(t.getLeft());
      System.out.println(t.getValue());
      inorder(t.getRight());
    }
  }
}
