//
//  ViewController.swift
//  AdvancedTableView
//
//  Created by Oscar Berggren on 2020-03-08.
//  Copyright © 2020 Oscar Berggren. All rights reserved.
//

import UIKit

fileprivate typealias CategoryDataSource = UITableViewDiffableDataSource<ViewController.Section, Category>
fileprivate typealias CategorySnapshot = NSDiffableDataSourceSnapshot<ViewController.Section, Category>

class ViewController: UIViewController {
    
    var mainCategories = [
        Category(category: "Men",image: UIImage(named: "Men"), subCategory: [
            Category(category: "Everything in men", image: nil, subCategory: nil),
            Category(category: "Mens clothes", image: nil, subCategory: [
                
                Category(category: "All in mens clothes", image: nil, subCategory: nil),
                Category(category: "Coats", image: nil, subCategory: nil),
                Category(category: "Jackets", image: nil, subCategory: nil),
                Category(category: "Jeans", image: nil, subCategory: nil),
                Category(category: "Shirts", image: nil, subCategory: nil),
                Category(category: "T-shirts", image: nil, subCategory: nil),
                Category(category: "Shorts", image: nil, subCategory: nil),
                Category(category: "Swimwear", image: nil, subCategory: nil)]),
            
            Category(category: "News", image: nil, subCategory: nil),
            Category(category: "Popular", image: nil, subCategory: nil),
            Category(category: "Accessories", image: nil, subCategory: [
                
                Category(category: "All in accessories", image: nil, subCategory: nil),
                Category(category: "Bags", image: nil, subCategory: nil),
                Category(category: "Belts", image: nil, subCategory: nil),
                Category(category: "Gloves", image: nil, subCategory: nil),
                Category(category: "Hats", image: nil, subCategory: nil),
                Category(category: "Scarves", image: nil, subCategory: nil),
                Category(category: "Jewellery", image: nil, subCategory: nil),
                Category(category: "Watches", image: nil, subCategory: nil),
                Category(category: "Sunglasses", image: nil, subCategory: nil)]),
            
            Category(category: "Underwear", image: nil, subCategory: [
                Category(category: "All underwear", image: nil, subCategory: nil),
                Category(category: "Socks", image: nil, subCategory: nil),
                Category(category: "Underpants", image: nil, subCategory: nil),
                Category(category: "Undershirts", image: nil, subCategory: nil),
                Category(category: "Nightwear", image: nil, subCategory: nil),
                Category(category: "Bathrobes", image: nil, subCategory: nil)])]),
        
        Category(category: "Women",image: UIImage(named: "Women"), subCategory: [
            Category(category: "Everything in women", image: nil, subCategory: nil),
            Category(category: "Womens clothes", image: nil, subCategory:
                [
                    
                    Category(category: "All in women clothes", image: nil, subCategory: nil),
                    Category(category: "Coats", image: nil, subCategory: nil),
                    Category(category: "Jackets", image: nil, subCategory: nil),
                    Category(category: "Jeans", image: nil, subCategory: nil),
                    Category(category: "Shirts", image: nil, subCategory: nil),
                    Category(category: "Skirts", image: nil, subCategory: nil),
                    Category(category: "Scarves", image: nil, subCategory: nil),
                    Category(category: "T-shirts", image: nil, subCategory: nil),
                    Category(category: "Shorts", image: nil, subCategory: nil)]
            ),
            Category(category: "News", image: nil, subCategory: nil),
            Category(category: "Popular", image: nil, subCategory: nil),
            Category(category: "Accessories", image: nil, subCategory:
                [
                    Category(category: "All in accessories", image: nil, subCategory: nil),
                    Category(category: "Bags", image: nil, subCategory: nil),
                    Category(category: "Belts", image: nil, subCategory: nil),
                    Category(category: "Gloves", image: nil, subCategory: nil),
                    Category(category: "Hats", image: nil, subCategory: nil),
                    Category(category: "Scarves", image: nil, subCategory: nil),
                    Category(category: "Jewellery", image: nil, subCategory: nil),
                    Category(category: "Watches", image: nil, subCategory: nil),
                    Category(category: "Sunglasses", image: nil, subCategory: nil)]),
            
            Category(category: "Underwear", image: nil, subCategory:
                [
                    Category(category: "All underwear", image: nil, subCategory: nil),
                    Category(category: "Socks", image: nil, subCategory: nil),
                    Category(category: "Underpants", image: nil, subCategory: nil),
                    Category(category: "Undershirts", image: nil, subCategory: nil),
                    Category(category: "Nightwear", image: nil, subCategory: nil),
                    Category(category: "Bathrobes", image: nil, subCategory: nil)
            ])]),
        
        Category(category: "Kids",image: UIImage(named: "Kids"), subCategory: [
            Category(category: "Everything in kids", image: nil, subCategory: nil),
            Category(category: "Kids clothes", image: nil, subCategory:
                [
                    
                    Category(category: "All in kids clothes", image: nil, subCategory: nil),
                    Category(category: "Coats", image: nil, subCategory: nil),
                    Category(category: "Jackets", image: nil, subCategory: nil),
                    Category(category: "Jeans", image: nil, subCategory: nil),
                    Category(category: "Jumpers", image: nil, subCategory: nil),
                    Category(category: "Shirts", image: nil, subCategory: nil),
                    Category(category: "T-shirts", image: nil, subCategory: nil),
                    Category(category: "Shorts", image: nil, subCategory: nil)]
            ),
            Category(category: "News", image: nil, subCategory: nil),
            Category(category: "Popular", image: nil, subCategory: nil),
            Category(category: "Accessories", image: nil, subCategory:
                [
                    Category(category: "All in accessories", image: nil, subCategory: nil),
                    Category(category: "Bags", image: nil, subCategory: nil),
                    Category(category: "Belts", image: nil, subCategory: nil),
                    Category(category: "Gloves", image: nil, subCategory: nil),
                    Category(category: "Hats", image: nil, subCategory: nil),
                    Category(category: "Scarves", image: nil, subCategory: nil),
                    Category(category: "Watches", image: nil, subCategory: nil),
                    Category(category: "Sunglasses", image: nil, subCategory: nil),]
            ),
            Category(category: "Underwear", image: nil, subCategory: [
                Category(category: "All underwear", image: nil, subCategory: nil),
                Category(category: "Socks", image: nil, subCategory: nil),
                Category(category: "Underpants", image: nil, subCategory: nil),
                Category(category: "Undershirts", image: nil, subCategory: nil),
                Category(category: "Nightwear", image: nil, subCategory: nil),
                Category(category: "Bathrobes", image: nil, subCategory: nil)])]),
        
        Category(category: "Sports",image: UIImage(named: "Sport"), subCategory: [
            Category(category: "All in sport", image: nil, subCategory: nil),
            Category(category: "Football", image: nil, subCategory: nil),
            Category(category: "Hockey", image: nil, subCategory: nil),
            Category(category: "Basket", image: nil, subCategory: nil),
            Category(category: "Tennis", image: nil, subCategory: nil),
            Category(category: "Boxing", image: nil, subCategory: nil),
            Category(category: "Curling", image: nil, subCategory: nil),
            Category(category: "Golf", image: nil, subCategory: nil)]),
        
        Category(category: "Supplemenets",image: UIImage(named: "Supplements"), subCategory: [
            Category(category: "Everything in supplements", image: nil, subCategory: nil),
            Category(category: "Protein", image: nil, subCategory: nil),
            Category(category: "Amino acids", image: nil, subCategory: nil),
            Category(category: "Carbohydrates", image: nil, subCategory: nil),
            Category(category: "Fat burners", image: nil, subCategory: nil)])
    ]
    
    // MARK: - Outlets
    @IBOutlet var tableView: UITableView!
    
    // MARK: - Variables
    lazy var starterCategories = mainCategories.count
    lazy var rowFrame = tableView.rectForRow(at: IndexPath(row: 0, section: 0))
    
    private var categories = [Category]()
    private var currentCategory = [Category]()
    private var previousCategories = [[Category]]()
    private var previouslyPicked = [Category]()
    
    private var cellIdentifier = "categoryCell"
    private var dataSource: CategoryDataSource!
    
    private let screenHeight = UIScreen.main.bounds.height
    private let subRowHeight: CGFloat = 80
    
    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        currentCategory = mainCategories
        registerTableView()
        configureDataSource()
        createSnapshot(from: currentCategory)
    }
    
    // MARK: - Private functions
    private func registerTableView() {
        tableView.delegate = self
        tableView.register(UINib(nibName: "CategoryCell", bundle: nil), forCellReuseIdentifier: cellIdentifier)
    }
    
    private func configureDataSource() {
        dataSource = CategoryDataSource(tableView: tableView) {(tableView, indexPath, category) -> UITableViewCell? in
            self.dataSource.defaultRowAnimation = .top
            let cell = tableView.dequeueReusableCell(withIdentifier: self.cellIdentifier, for: indexPath)
            if let categoryCell = cell as? CategoryCell {
                
                categoryCell.setBackgroundImage(show: self.currentCategory[indexPath.row].image != nil, image: self.currentCategory[indexPath.row].image ?? UIImage())
                categoryCell.changeFont(selected: indexPath.row < self.previouslyPicked.count || self.previousCategories.count == 0)
                categoryCell.changeFontColor(black: self.previousCategories.count == 0 || indexPath.row == 0)
                categoryCell.changeArrowTintColor(black: self.previousCategories.count == 0 || indexPath.row == 0)
                categoryCell.toggleArrowVisibility(show: self.currentCategory[indexPath.row].subCategory == nil)
                categoryCell.setTitleText(text: self.currentCategory[indexPath.row].category)
            }
            return cell
        }
    }
    
    private func createSnapshot(from categories: [Category]) {
        var snapshot = CategorySnapshot()
        snapshot.appendSections([.main])
        snapshot.appendItems(categories)
        dataSource.apply(snapshot, animatingDifferences: true)
    }
}

// MARK: - Table view extension
extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let category = dataSource.itemIdentifier(for: indexPath) else { return }
        
        if indexPath.row < previouslyPicked.count {
            for cellRow in (indexPath.row..<previousCategories.count) {
                let cell = tableView.cellForRow(at: IndexPath(row: cellRow, section: 0))
                if let categoryCell = cell as? CategoryCell {
                    categoryCell.changeFont(selected: false || indexPath.row == 0)
                    categoryCell.rotateArrow(selected: false)
                }
            }
            
            currentCategory = previousCategories[indexPath.row]
            previousCategories.removeSubrange(indexPath.row..<previousCategories.count)
            previouslyPicked.removeSubrange(indexPath.row..<previouslyPicked.count)
            createSnapshot(from: currentCategory)
            
        } else if currentCategory[indexPath.row].subCategory != nil {
            let cell = tableView.cellForRow(at: indexPath)
            if let categoryCell = cell as? CategoryCell {
                categoryCell.changeFont(selected: true)
                categoryCell.rotateArrow(selected: true)
            }
            
            previouslyPicked.append(category)
            previousCategories.append(currentCategory)
            currentCategory = previouslyPicked + category.subCategory!
            createSnapshot(from: currentCategory)
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return indexPath.row == 0 || previouslyPicked.count == 0 ? screenHeight / CGFloat(starterCategories) : subRowHeight
    }
}

// MARK: - Scroll view
extension ViewController {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y < 0 {
            scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        }
    }
    
    func scrollViewDidEndScrollingAnimation(_ scrollView: UIScrollView) {
        if scrollView.contentOffset.y != 0 {
            scrollView.setContentOffset(CGPoint(x: 0, y: 0), animated: false)
        }
    }
}

// MARK: - Section enum
extension ViewController {
    fileprivate enum Section {
        case main
    }
}
