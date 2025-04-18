//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Jessie Quach on 4/4/25.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    @IBOutlet weak var postImageView: UIImageView!
    @IBOutlet weak var postContentTextView: UITextView!
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        // MARK: - Configure the post content label
        postContentTextView.text = post.caption.trimHTMLTags()
        
        // MARK: - Configure the image views
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: postImageView)
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
