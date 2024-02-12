import SwiftUI



struct Directory_Setup: View {
    @State private var storedimage = UIImage()
    @State private var imurl = "https://www.google.com/imgres?imgurl=https%3A%2F%2Feasydrawingguides.com%2Fwp-content%2Fuploads%2F2017%2F04%2Fhow-to-draw-goku-featured-image-1200.png&tbnid=OL_7rnk6kdMq-M&vet=12ahUKEwj1v-OG25aEAxVmcWwGHdY5C40QMygDegQIARB1..i&imgrefurl=https%3A%2F%2Feasydrawingguides.com%2Fhow-to-draw-goku%2F&docid=0M9p-aNKeUpiNM&w=1200&h=1129&q=goku&hl=en&client=firefox-b-d&ved=2ahUKEwj1v-OG25aEAxVmcWwGHdY5C40QMygDegQIARB1"

    func downloadimage(from url: URL, completion : @escaping (Data?,URLResponse?,Error?)-> ()) {
        let url = URL(string: self.imurl)!
        self.downloadimage(from : url){data,response,error in
            guard let  data = data, error == nil else {return}
            do {
                self.storedimage = UIImage(data : data)!
            }
            catch {
                print("Error message :-" + error.localizedDescription)
            }
        }
    }
    var body: some View {
        VStack{
            if(self.storedimage != nil){
//                Image("image2")
                Image(uiImage: self.storedimage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        }
    }
}

struct Directory_Setup_Previews: PreviewProvider {
    static var previews: some View {
        Directory_Setup()
    }
}

//from : url
