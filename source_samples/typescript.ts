let n = 12345;
let f = 1.608;

let dr = "durr";
console.log(`hurr ${dr} burr`);

let fst: <T, U>(a: T, b: U) => T = (a, b) => a;

// with "noImplicitAny": false in tsconfig.json, anys: any[]
const anys = [];
anys.push(1);
anys.push("oh no");
anys.push({ anything: "goes" });

type One = { p: string };
interface Two {
  p: string;
}
class Three {
  p = "Hello";
}
 
let x: One = { p: "hi" };
let two: Two = x;
two = new Three();

function start(
  arg: string | string[] | (() => string) | { s: string }
): string {
  // this is super common in JavaScript
  if (typeof arg === "string") {
    return commonCase(arg);
  } else if (Array.isArray(arg)) {
    return arg.map(commonCase).join(",");
  } else if (typeof arg === "function") {
    return commonCase(arg());
  }
 
  function commonCase(s: string): string {
    // finally, just convert a string to another string
    return s;
  }
}