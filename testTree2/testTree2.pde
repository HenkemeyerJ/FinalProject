TreeNode tree;
TreeNode current;
String s = "Choose Your Own Adventure!";
BinarySearchTree t;
Scenes sc;
boolean one = false;
boolean two = false;
boolean zero = false;
private int levelCount = 0;

void setup() {
  size(800, 600);
  t = new BinarySearchTree();
  tree = t.buildTree();
  current = tree;
  sc = new Scenes();
}

void draw() {
  background(0);
  fill(255);
  textSize(20);
  text(s, 60, height/2);
  if (zero==true) {
    sc.scene0();
  } else if (one==true) {
    sc.scene1();
    text("Choose again? (press down arrow)", 200, 400);
  } else if (two==true) {
    sc.scene2();
    text("Choose again? (press down arrow)", 200, 400);
  } else {
    zero = true;
  }
}

void keyPressed() {
  check();

  if (keyCode == LEFT) {
    s = (String)current.getValue();
    System.out.println(s);

    if (levelCount > 4) {
      one = true;
      zero = false;
    } 
     else {
      current = current.getLeft();
    }
  } else if (keyCode == RIGHT) {
    s = (String)current.getValue();
    System.out.println(s);

    if (levelCount > 4) {
      one = true;
      zero = false;
    } else {
      current = current.getRight();
    }
  }
}

void check() {

  println(levelCount);
  if (levelCount > 3 && keyCode==DOWN) {
    println("Choose Another Adventure");
    zero = true;
    levelCount = 0;
    current = tree;
    s = "Choose another Adventure! Really? Press left or right arrow.";
    System.out.println(s);
  }
  levelCount+=1;
}


interface Treeable {
  public Object getValue();
  public Treeable getLeft();
  public Treeable getRight();
  public void setValue(Comparable value);
  public void setLeft(Treeable left);
  public void setRight(Treeable right);
}
