use std::io::Result as IoResult;
pub use crate::front_of_house::hosting;

mod front_of_house {
    pub mod hosting {
        pub fn add_to_waitlist() {}
    }
}

pub struct Guess {
    value: i32,
}

fn function2() -> IoResult<()> {
  let an_array = [1, 2, 3, 4, 5];
  let a_slice = &a[1..4]; // Gives [2, 3, 4]
}

fn main() {
  let x = 45;
  let y = branch(x);
  loop {
      let guess: i32 = match guess.trim().parse() {
          Ok(num) => num,
          Err(_) => continue,
      };
      if guess < 1 || guess > 100 {
          println!("The secret number will be between 1 and 100.");
          continue;
      }
      match guess.cmp(&secret_number) {
  }
}

fn largest_i32(list: &[i32]) -> &i32 {
    let mut largest = &list[0];
    for item in list {
        if item > largest {
            largest = item;
        }
    }
    largest
}

fn main() {
    let number_list = vec![34, 50, 25, 100, 65];

    let result = largest_i32(&number_list);
    println!("The largest number is {}", result);
    assert_eq!(*result, 100);

    let char_list = vec!['y', 'm', 'a', 'q'];

    let result = largest_char(&char_list);
    println!("The largest char is {}", result);
    assert_eq!(*result, 'y');
}




let len = {
  let mut s1 = String::from("123");
  let mut s2 = s1;
  s1.push_str("456");
  s1.len() + s2.len()
};

fn main() {
  let mut s1 = String::from("Hello");
  let length = add_to_length(&mut s1);

  // Prints "Hello World!"
  println!("{}", s1);
}

fn add_to_length(s: &mut String) -> i32 {
  s.push_str(", World!");
  5 + s.len()
}

fn get_area(shape: Shape) -> f32 {
  match shape {
    Shape::Triangle(pt1, pt2, pt3) => {
      // Calculate 1/2 base * height
    },
    Shape::Rectangle(pt1, pt2, pt3, pt4) => {
      // Calculate base * height
    },
    Shape::Circle(center, radius) => (0.5) * radius * radius * PI
  }
}


impl Guess {
    pub fn new(value: i32) -> Guess {
        if value < 1 || value > 100 {
            panic!("Guess value must be between 1 and 100, got {}.", value);
        }

        Guess { value }
    }

    pub fn value(&self) -> i32 {
        self.value
    }
}



addWithStatements ::Int -> Int -> IO Int
addWithStatements x y = do
  putStrLn "Adding: "
  print x
  print y
  return $ x + y
fn branch(x: i32) -> i32 {
  if x > 40 {
    println!("Greater");
    x * 2
  } else {
    x * 3
  }
}

let x = 'c';

match x {
    'a'..='j' => println!("early ASCII letter"),
    'k'..='z' => println!("late ASCII letter"),
    _ => println!("something else"),
}



enum Message {
    Quit,
    Move { x: i32, y: i32 },
    Write(String),
    ChangeColor(i32, i32, i32),
}

fn main() {
    let msg = Message::ChangeColor(0, 160, 255);

    match msg {
        Message::Quit => {
            println!("The Quit variant has no data to destructure.")
        }
        Message::Move { x, y } => {
            println!(
                "Move in the x direction {} and in the y direction {}",
                x, y
            );
        }
        Message::Write(text) => println!("Text message: {}", text),
        Message::ChangeColor(r, g, b) => println!(
            "Change the color to red {}, green {}, and blue {}",
            r, g, b
        ),
    }
}



as - perform primitive casting, disambiguate the specific trait containing an item, or rename items in use statements
async - return a Future instead of blocking the current thread
await - suspend execution until the result of a Future is ready
break - exit a loop immediately
const - define constant items or constant raw pointers
continue - continue to the next loop iteration
crate - in a module path, refers to the crate root
dyn - dynamic dispatch to a trait object
else - fallback for if and if let control flow constructs
enum - define an enumeration
extern - link an external function or variable
false - Boolean false literal
fn - define a function or the function pointer type
for - loop over items from an iterator, implement a trait, or specify a higher-ranked lifetime
if - branch based on the result of a conditional expression
impl - implement inherent or trait functionality
in - part of for loop syntax
let - bind a variable
loop - loop unconditionally
match - match a value to patterns
mod - define a module
move - make a closure take ownership of all its captures
mut - denote mutability in references, raw pointers, or pattern bindings
pub - denote public visibility in struct fields, impl blocks, or modules
ref - bind by reference
return - return from function
Self - a type alias for the type we are defining or implementing
self - method subject or current module
static - global variable or lifetime lasting the entire program execution
struct - define a structure
super - parent module of the current module
trait - define a trait
true - Boolean true literal
type - define a type alias or associated type
union - define a union; is only a keyword when used in a union declaration
unsafe - denote unsafe code, functions, traits, or implementations
use - bring symbols into scope
where - denote clauses that constrain a type
while - loop conditionally based on the result of an expression

Keywords Reserved for Future Use

The following keywords do not yet have any functionality but are reserved by Rust for potential future use.

    abstract
    become
    box
    do
    final
    macro
    override
    priv
    try
    typeof
    unsized
    virtual
    yield


