//
//  ViewController.swift
//  MVVM
//
//  Created by Sude on 3.07.2024.
//

import UIKit

final class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  @IBOutlet weak var artistListTableView: UITableView!
  
  let viewModel = ArtistViewModel()
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    artistListTableView.dataSource = self
    artistListTableView.delegate = self
    artistListTableView.register(UITableViewCell.self , forCellReuseIdentifier: "artistInfoCell")
    viewModel.getArtistInfo()
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    viewModel.numberOfArtists()
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier:"artistInfoCell", for: indexPath)
    let artist = viewModel.artist(index: indexPath.row)
    
    cell.textLabel?.text = artist.name
    cell.detailTextLabel?.text = "\(artist.category) - \(artist.songName)"
    
    return cell
  }
  

}

