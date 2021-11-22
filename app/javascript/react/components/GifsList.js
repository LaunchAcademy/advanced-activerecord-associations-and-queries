import React, { useState, useEffect } from "react"

import FetchGifs from "./services/FetchGifs"

const GifsList = (props) => {
  const [gifs, setGifs] = useState([])

  const getGifs = async () => {
    const gifsData = await FetchGifs.getGifs()
    setGifs(gifsData)
  }

  useEffect(() => {
    getGifs()
  }, [])

  const listedGifs = gifs.map((gif) => {
    return (
      <li key={gif}>
        <a href={gif} target="_blank">{gif}</a>
      </li>
    )
  })

  return (
    <ul>
      {listedGifs}
    </ul>
  )
}

export default GifsList