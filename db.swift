import CoreData

class Pais: NSManagedObject {
    @NSManaged var id: Int
    @NSManaged var nome: String
}

class Diretor: NSManagedObject {
    @NSManaged var id: Int
    @NSManaged var nome: String
}

class Imagem: NSManagedObject {
    @NSManaged var id: Int
    @NSManaged var filme_id: Int
    @NSManaged var imagem_blob: Data?
    
    @NSManaged var filme: Filme
}

class Filme: NSManagedObject {
    @NSManaged var id: Int
    @NSManaged var titulo: String?
    @NSManaged var ano_de_lancamento: Int16
    @NSManaged var duracao: Int32
    @NSManaged var trailer: String?
    @NSManaged var genero: String?
    
    @NSManaged var pais_id: Int
    @NSManaged var diretor_id: Int
    @NSManaged var imagem_id: Int
    
    @NSManaged var pais: Pais
    @NSManaged var diretor: Diretor
    @NSManaged var imagem: Imagem
    
    @NSManaged var atores: NSSet?
}

class Ator: NSManagedObject {
    @NSManaged var id: Int
    @NSManaged var nome: String
    @NSManaged var idade: Int16
    @NSManaged var pais_id: Int
    
    @NSManaged var pais: Pais
    @NSManaged var filmes: NSSet?
}

class FilmeHasAtor: NSManagedObject {
    @NSManaged var filme_id: Int
    @NSManaged var ator_id: Int
    
    @NSManaged var filme: Filme
    @NSManaged var ator: Ator
}
