struct Car{
    
    var make:String = ""
    var model:String = ""
    var year:String = ""
    var details:String {
        return year + make + model
    }
    
    public
    
    func getDetails() -> String {
        return details
    }
}
