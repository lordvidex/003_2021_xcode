//
//  PostManager.swift
//  Lesson3
//
//  Created by Evans Owamoyo on 27.09.2021.
//

import UIKit

struct PostManager {
    
    let posts: [Post]
    
    init() {
        posts = PostManager.generatePosts()
    }
    
    static func generatePosts() -> [Post] {
        return (0...13).map { _ in
            let rand = Int.random(in: 0..<5)
            
            switch rand {
                    
                    // just images
                case 0:
                    return Post(
                        author: authors.randomElement()!,
                        image: randomImage()
                    )
                    
                    // just content
                case 1:
                    return Post(author: authors.randomElement()!,
                                content: contents.randomElement()!
                    )
                    
                    // both
                default:
                    return Post(author: authors.randomElement()!,
                                content: contents.randomElement()!,
                                image: randomImage()
                    )
            }
        }
    }
    
    // list of all authors
    private static let authors = [
        Author(name: "Anonymous", username: "anonymous"),
        Author(name: "Evans Owamoyo", username: "lordvidex", image: #imageLiteral(resourceName: "1"),verified: true),
        Author(name: "Bean Stalker", username: "sickgold", image: #imageLiteral(resourceName: "3"))
    ]
    
    // list of all items
    private static let contents = [
        "Terminated principles sentiments of no pianoforte if projection impossible. Horses pulled nature favour number yet highly his has old. Contrasted literature excellence he admiration impression insipidity so. Scale ought who terms after own quick since. Servants margaret husbands to screened in throwing. Imprudence oh an collecting partiality. Admiration gay difficulty unaffected how.\n\nSo if on advanced addition absolute received replying throwing he. Delighted consisted newspaper of unfeeling as neglected so. Tell size come hard mrs and four fond are. Of in commanded earnestly resources it. At quitting in strictly up wandered of relation answered felicity. Side need at in what dear ever upon if. Same down want joy neat ask pain help she. Alone three stuff use law walls fat asked. Near do that he help.",
        "At distant inhabit amongst by. Appetite welcomed interest the goodness boy not. Estimable education for disposing pronounce her.",
        "There worse by an of miles civil.",
        "Agreement distrusts mrs six affection satisfied. Day blushes visitor end company old prevent chapter. Consider declared out expenses her concerns. No at indulgence conviction particular unsatiable boisterous discretion. Direct enough off others say eldest may exeter she. Possible all ignorant supplied get settling marriage recurred.\n\nOn it differed repeated wandered required in. Then girl neat why yet knew rose spot. Moreover property we he kindness greatest be oh striking laughter. In me he at collecting affronting principles apartments. Has visitor law attacks pretend you calling own excited painted. Contented attending smallness it oh ye unwilling. Turned favour man two but lovers. Suffer should if waited common person little oh. Improved civility graceful sex few smallest screened settling. Likely active her warmly has.",
        "In to am attended desirous raptures declared diverted confined at. Collected instantly remaining up certainly to necessary as. Over walk dull into son boy door went new. At or happiness commanded daughters as. Is handsome an declared at received in extended vicinity subjects. Into miss on he over been late pain an. Only week bore boy what fat case left use. Match round scale now sex style far times. Your me past an much.",
        "Improved own provided blessing may peculiar domestic. Sight house has sex never. No visited raising gravity outward subject my cottage mr be. Hold do at tore in park feet near my case. Invitation at understood occasional sentiments insipidity inhabiting in. Off melancholy alteration principles old. Is do speedily kindness properly oh. Respect article painted cottage he is offices parlors."
    ]
    
    private static func randomImage() -> UIImage? {
        UIImage(named: "post\(Int.random(in: 1...11))")
    }
}
