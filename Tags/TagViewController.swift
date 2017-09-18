//
//  TagViewController
//  Tags
//
//  Created by Aishwarya on 15/09/17.
//  Copyright © 2017 Aishwarya. All rights reserved.
//

import UIKit

class TagViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    var tagsArray = ["people","PublicationPublication","article","Topics","Stories"]
    var colorArray = [UIColor.cyan,UIColor.gray,UIColor.green,UIColor.blue,UIColor.brown]
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionviewSetup()
        for tag in tagsArray {
            getTheSizeOfText(text: tag)
            if let layout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout {
                layout.scrollDirection = .horizontal
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionviewSetup() {
        collectionView.register(UINib(nibName: "CustomCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }
    
    func heightForView(width:CGFloat,item:Int) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width: CGFloat.greatestFiniteMagnitude, height: width))
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        label.font = UIFont(name: "Palatino-Bold", size: 18)
        label.text = tagsArray[item]
        label.sizeToFit()
        
        return label.frame.width
    }
    
    func getTheSizeOfText(text:String) -> CGSize{
        var size:CGSize!

        if let font = UIFont(name: "Palatino-Bold", size: 18) {
            let fontAttributes = [NSFontAttributeName: font] // it says name, but a UIFont works
             size = (text as NSString).size(attributes: fontAttributes)
        }
        return size
    }
}

extension TagViewController:UICollectionViewDelegate{
    
}

extension TagViewController:UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tagsArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CustomCell
        cell.label.text = tagsArray[indexPath.row]
        cell.backgroundColor = colorArray[indexPath.item]
        return cell
    }
}

extension TagViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
       // let size = getTheSizeOfText(text: tagsArray[indexPath.item])
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: CGFloat.greatestFiniteMagnitude, height: 30))
        label.text = tagsArray[indexPath.item]
        label.font = UIFont(name: "Palatino-Bold", size: 18)
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail

        let size = label.frame.width
        return CGSize(width: size, height: 30)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    
    
}

extension UILabel {
    func heightForView(width:CGFloat) -> CGFloat{
        let label:UILabel = UILabel(frame: CGRect(x: 0, y: 0, width:CGFloat.greatestFiniteMagnitude , height: width))
        label.numberOfLines = numberOfLines
        label.lineBreakMode = lineBreakMode
        label.font = font
        label.text = text
        label.sizeToFit()
        
        return label.frame.width
    }
}
