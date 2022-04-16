const characters = 'cababa'

const countCharacters = (string) => [...string].reduce((prev, curr) => prev[curr] ? 
    {...prev, [curr]: prev[curr] + 1}
    : { ...prev, [curr]: 1 }, {})


const response = countCharacters(characters)

console.info({response})