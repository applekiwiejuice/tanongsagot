import React from 'react'
import ReactDOM from 'react-dom'

function Index () {
  return (
    <h1>Hello, React on Rails!</h1>
  )
}

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Index />,
    document.body.appendChild(document.createElement('div')),
  )
})