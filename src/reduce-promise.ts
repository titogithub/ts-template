const asyncFn = (time = 1, multiplier = 1000): Promise<any> =>
  new Promise((resolve) =>
    setTimeout(() => resolve({ time, multiplier }), time * multiplier),
  )

const arr = [1, 2, 3, 4]

function runSequentially(arr: Array<any>): Promise<any>[] {
  return arr.reduce(async (prev, curr) => {
    const resp = await prev
    const asyncResp = await asyncFn(curr)
    return [...resp, asyncResp]
  }, Promise.resolve([]))
}

function runParallel(arr: Array<any>): Promise<any>[] {
  return arr.map(async (item) => {
    const response = await asyncFn(item)
    return response
  })
}

console.time('runSequentially')
Promise.all([runSequentially(arr)]).then((response) => {
  console.info('seq response: ', ...response)
  console.timeEnd('runSequentially')
})

console.time('runParallel')
Promise.all(runParallel(arr)).then((response) => {
  console.info({ response })
  console.timeEnd('runParallel')
})
