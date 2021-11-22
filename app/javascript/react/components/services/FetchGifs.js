class FetchGifs {

  static async getGifs() {
    try {
      const response = await fetch("api/v1/gifs")
      if (!response.ok) {
        throw new Error(`${response.status} ${response.statusText}`)
      }
      const gifs = await response.json()
      return gifs
    } catch (error) {
      console.error(`Error in fetch: ${error.message}`)
    }
  }

}

export default FetchGifs