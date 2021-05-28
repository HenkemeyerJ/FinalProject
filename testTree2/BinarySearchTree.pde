class BinarySearchTree {

  private TreeNode root;
  private TreeNode current;

  public BinarySearchTree() {
    root = null;
  }

  TreeNode buildTree() {
    
    root = new TreeNode("You find youself on a deserted island. From what you can tell, \nthe island is large and you are alone. \nYou realize that you'll need resources if you want to live, \nbut you don't want to be alone. \nDo you look for shelter (left) or do you look for other people (right)?");
    
    //level one
    root.setLeft(new TreeNode("You sucessfully find a location that would make \nfor a strong shelter near the beach. \nNow you must determine what's next. \nDo you get food (left) or do you get water (right)?"));
    root.setRight(new TreeNode("While looking for any other survivors, \nyou come across a tribe of island natives. \nYou're feel relieved until they pull spears on you. \nSome force hits the back of your head, and you wake up hours later tied to a post. \nDo you be patient (left) or do you try to break free (right)?"));
    
    //level two
    root.getLeft().setLeft(new TreeNode("While searching in the woods, you come across a boar. \nWith a rock in hand, you attempt to bash the boar, but it moves too fast. \nIt leaves a gash on your leg, and runs off. \nDo you go back to the shelter to check your leg (left) or \ndo you continue after the boar (right)?"));
    root.getRight().setRight(new TreeNode("Knowing the rope is frayed, you rub it up and down on the post. \nFeeling the rope snap, you quickly stand up and move to the entrance of the tent. \nAs you leave the camp, one of the guards notices you. \nYou start running, and need to find a place to hide. \nDo you hide in a cave (left) or do you hide on the mountain (right)?"));
    root.getLeft().setRight(new TreeNode("Searching through the forest, you come across a lake of fresh water. \nQuickly drinking your fill, you decide to head back to the beach. \nThere you hear and see the approaching outline of a aircraft. \nDo you attempt to make an S.O.S. sign (left) or do you look for something that might help from the your plane's wreckage (right)?"));
    root.getRight().setLeft(new TreeNode("You don't know how strong the rope is, or what waits you after you get out, so you decide to wait. \nThat night, a fierce storm blows through the village. \nGuards are taking cover, torches went out, and your rope has snapped. \nLooking outside the tent, you see a native get hit by a pole and seems to be very injured. \nDo you help him (left) or do you take this opportunity to leave (right)?"));

    //level three left sub tree
    root.getLeft().getLeft().setLeft(new TreeNode("You go back to your shelter to check out your leg. \nRealizing it needs to be patched, you give yourself first aid using some \nleaves. It starts to feel better, \nbut after several hours, it gets warm and gooey. \nThat night you pass away from an infection left by the boar. \nYou died."));
    root.getLeft().getLeft().setRight(new TreeNode("Chasing after the boar, you fashion a club rom the rock and a stick. \nAdvancing on the boar, you whack it will the club, successfully knocking it down. \nIn your hasty celebration, you fail to notice the second boar behind you. \nThis time the tusk goes through the stomache. \nYou only have a few painful moments to think where everything went wrong. \nYou died."));
    root.getLeft().getRight().setLeft(new TreeNode("Quickly grabbing logs and stones that ould be needed, you fashion a S.O.S. sign. \nUnfortunately, the plane is already gone without as much as seeing you. \nYou are still stuck on the island, but at least you're alive."));
    root.getLeft().getRight().setRight(new TreeNode("Rummaging through the scraps, you find a box containing a flare gun. \nFiring the shot near the plane, it doesn't seem to see you and your heart sinks. \nThen the plane turns around, landing on the water in front of you. \nYou're saved and will be on your way home shortly."));

    //level three right sub tree
    root.getRight().getRight().setRight(new TreeNode("Quickly scaling the mountain. \nYou see that none of the guards know where you went. \nYou have survived, but how long will that last."));
    root.getRight().getRight().setLeft(new TreeNode("The cave was the quickest and most logical choice. \nUnfortunately, the natives thought the same thing. \nYou are capture and executed. \nYou died."));
    root.getRight().getLeft().setLeft(new TreeNode("Exemplifying selflessness, you run to the man. \nLifting the pole, you manage to drag him out from underneath. \nYou carry him to the nearest tent to rest. \nAfter the strom, you are taken captive again, however, thanks to the man's testimony, \nyou are allowed to become a member of the tribe. \nYou won't be able to make it home, but now you have another family."));
    root.getRight().getLeft().setRight(new TreeNode("You attempt to slip out the back flap of the tent, \nonly to run into one of the guards running by. \nYou are taken captive again, and executed the next day. \nYou died."));
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
