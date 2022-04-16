const obj = { Key: 1, Value: 'one' };

const toCamelCaseKeys = (object) => 
  Object.keys(object).reduce((prev, curr) => (
 (prev[curr.charAt(0).toLowerCase() + curr.slice(1)] = object[curr]) && prev)
 , {})

console.log(camelCaseKeys(obj));
