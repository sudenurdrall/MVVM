
import Foundation

final class ArtistViewModel {
  private var artists: [Artist] = []
  
  func getArtistInfo() {
    artists = [
      Artist(name:"Mozart", category:"Klasik", songName: "Eine kleine Nachtmusik"),
      Artist(name: "Bob Marley", category: "Reggae", songName: "No woman no cry"),
      Artist(name: "Adele", category: "Pop", songName: "Hello"),
      Artist(name: "Elvis Presley", category: "Rock 'n' roll" , songName: "Jailhouse Rock"),
      Artist(name: "Beyonce", category: "R&B", songName: "Single Ladies"),
      Artist(name: "Micheal Jackson", category: "Pop", songName: "Thriller")
    ]
  }
    func numberOfArtists() -> Int {
      return artists.count
    }
    
    func artist(index: Int) -> Artist {
      return artists[index]
    }
  }

// ViewModel verilerimizin oldugu kisimdir.
