import CoreData

class CoreDataFunctions {
    
    //Tabela País
    
    // Inserir (Create) um país
    static func insertPais(context: NSManagedObjectContext, id: Int, nome: String) {
        let pais = Pais(context: context)
        pais.id = Int16(id)
        pais.nome = nome
    }
    
    // Obter (Read) todos os países
    static func getAllPaises(context: NSManagedObjectContext) -> [Pais]? {
        let request: NSFetchRequest<Pais> = Pais.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Erro ao buscar País: \(error)")
            return nil
        }
    }
    
    // Atualizar (Update) um país
    static func updatePais(context: NSManagedObjectContext, id: Int, nome: String) {
        if let pais = getPaisById(context: context, id: id) {
            pais.nome = nome
        }
    }
    
    // Excluir (Delete) um país
    static func deletePais(context: NSManagedObjectContext, id: Int) {
        if let pais = getPaisById(context: context, id: id) {
            context.delete(pais)
        }
    }
    
    //Tabela Diretor
    
    // Inserir (Create) um diretor
    static func insertDiretor(context: NSManagedObjectContext, id: Int, nome: String) {
        let diretor = Diretor(context: context)
        diretor.id = Int16(id)
        diretor.nome = nome
    }
    
    // Obter (Read) todos os diretores
    static func getAllDiretores(context: NSManagedObjectContext) -> [Diretor]? {
        let request: NSFetchRequest<Diretor> = Diretor.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Erro ao buscar Diretor: \(error)")
            return nil
        }
    }
    
    // Atualizar (Update) um diretor
    static func updateDiretor(context: NSManagedObjectContext, id: Int, nome: String) {
        if let diretor = getDiretorById(context: context, id: id) {
            diretor.nome = nome
        }
    }
    
    // Excluir (Delete) um diretor
    static func deleteDiretor(context: NSManagedObjectContext, id: Int) {
        if let diretor = getDiretorById(context: context, id: id) {
            context.delete(diretor)
        }
    }
    
    //Tabela Filme
    
    // Inserir (Create) um filme
    static func insertFilme(context: NSManagedObjectContext, id: Int, titulo: String, ano_de_lancamento: Int16, duracao: Int32, trailer: String?, genero: String?, pais_id: Int, diretor_id: Int, imagem_id: Int) {
        let filme = Filme(context: context)
        filme.id = Int16(id)
        filme.titulo = titulo
        filme.ano_de_lancamento = ano_de_lancamento
        filme.duracao = duracao
        filme.trailer = trailer
        filme.genero = genero
        filme.pais_id = pais_id
        filme.diretor_id = diretor_id
        filme.imagem_id = imagem_id
    }
    
    // Obter (Read) todos os filmes
    static func getAllFilmes(context: NSManagedObjectContext) -> [Filme]? {
        let request: NSFetchRequest<Filme> = Filme.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Erro ao buscar Filme: \(error)")
            return nil
        }
    }
    
    // Atualizar (Update) um filme
    static func updateFilme(context: NSManagedObjectContext, id: Int, titulo: String, ano_de_lancamento: Int16, duracao: Int32, trailer: String?, genero: String?, pais_id: Int, diretor_id: Int, imagem_id: Int) {
        if let filme = getFilmeById(context: context, id: id) {
            filme.titulo = titulo
            filme.ano_de_lancamento = ano_de_lancamento
            filme.duracao = duracao
            filme.trailer = trailer
            filme.genero = genero
            filme.pais_id = pais_id
            filme.diretor_id = diretor_id
            filme.imagem_id = imagem_id
        }
    }
    
    // Excluir (Delete) um filme
    static func deleteFilme(context: NSManagedObjectContext, id: Int) {
        if let filme = getFilmeById(context: context, id: id) {
            context.delete(filme)
        }
    }
    
    //Tabela Imagem
    
    // Inserir (Create) uma imagem
    static func insertImagem(context: NSManagedObjectContext, id: Int, filme_id: Int, imagem_blob: Data?) {
        let imagem = Imagem(context: context)
        imagem.id = Int16(id)
        imagem.filme_id = filme_id
        imagem.imagem_blob = imagem_blob
    }
    
    // Obter (Read) todas as imagens
    static func getAllImagens(context: NSManagedObjectContext) -> [Imagem]? {
        let request: NSFetchRequest<Imagem> = Imagem.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Erro ao buscar Imagem: \(error)")
            return nil
        }
    }
    
    // Atualizar (Update) uma imagem
    static func updateImagem(context: NSManagedObjectContext, id: Int, filme_id: Int, imagem_blob: Data?) {
        if let imagem = getImagemById(context: context, id: id) {
            imagem.filme_id = filme_id
            imagem.imagem_blob = imagem_blob
        }
    }
    
    // Excluir (Delete) uma imagem
    static func deleteImagem(context: NSManagedObjectContext, id: Int) {
        if let imagem = getImagemById(context: context, id: id) {
            context.delete(imagem)
        }
    }
    
    //Tabela Ator
    
    // Inserir (Create) um ator
    static func insertAtor(context: NSManagedObjectContext, id: Int, nome: String, idade: Int16, pais_id: Int) {
        let ator = Ator(context: context)
        ator.id = Int16(id)
        ator.nome = nome
        ator.idade = idade
        ator.pais_id = pais_id
    }
    
    // Obter (Read) todos os atores
    static func getAllAtores(context: NSManagedObjectContext) -> [Ator]? {
        let request: NSFetchRequest<Ator> = Ator.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Erro ao buscar Ator: \(error)")
            return nil
        }
    }
    
    // Atualizar (Update) um ator
    static func updateAtor(context: NSManagedObjectContext, id: Int, nome: String, idade: Int16, pais_id: Int) {
        if let ator = getAtorById(context: context, id: id) {
            ator.nome = nome
            ator.idade = idade
            ator.pais_id = pais_id
        }
    }
    
    // Excluir (Delete) um ator
    static func deleteAtor(context: NSManagedObjectContext, id: Int) {
        if let ator = getAtorById(context: context, id: id) {
            context.delete(ator)
        }
    }
    
    //Tabela FilmeHasAtor
    
    // Inserir (Create) uma relação filme-ator
    static func insertFilmeHasAtor(context: NSManagedObjectContext, filme_id: Int, ator_id: Int) {
        let filmeHasAtor = FilmeHasAtor(context: context)
        filmeHasAtor.filme_id = Int16(filme_id)
        filmeHasAtor.ator_id = Int16(ator_id)
    }
    
    // Obter (Read) todas as relações filme-ator
    static func getAllFilmeHasAtores(context: NSManagedObjectContext) -> [FilmeHasAtor]? {
        let request: NSFetchRequest<FilmeHasAtor> = FilmeHasAtor.fetchRequest()
        do {
            return try context.fetch(request)
        } catch {
            print("Erro ao buscar relação FilmeHasAtor: \(error)")
            return nil
        }
    }
    
    // Excluir (Delete) uma relação filme-ator
    static func deleteFilmeHasAtor(context: NSManagedObjectContext, filme_id: Int, ator_id: Int) {
        if let filmeHasAtor = getFilmeHasAtor(context: context, filme_id: filme_id, ator_id: ator_id) {
            context.delete(filmeHasAtor)
        }
    }
    
    // Funções auxiliares
    
    private static func getPaisById(context: NSManagedObjectContext, id: Int) -> Pais? {
        let request: NSFetchRequest<Pais> = Pais.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id as NSNumber)
        do {
            return try context.fetch(request).first
        } catch {
            print("Erro ao buscar País por ID: \(error)")
            return nil
        }
    }
    
    private static func getDiretorById(context: NSManagedObjectContext, id: Int) -> Diretor? {
        let request: NSFetchRequest<Diretor> = Diretor.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id as NSNumber)
        do {
            return try context.fetch(request).first
        } catch {
            print("Erro ao buscar Diretor por ID: \(error)")
            return nil
        }
    }
    
    // Funções auxiliares semelhantes para obter entidades por ID para Filme, Imagem, Ator e FilmeHasAtor
    
    private static func getFilmeById(context: NSManagedObjectContext, id: Int) -> Filme? {
        let request: NSFetchRequest<Filme> = Filme.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id as NSNumber)
        do {
            return try context.fetch(request).first
        } catch {
            print("Erro ao buscar Filme por ID: \(error)")
            return nil
        }
    }
    
    private static func getImagemById(context: NSManagedObjectContext, id: Int) -> Imagem? {
        let request: NSFetchRequest<Imagem> = Imagem.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id as NSNumber)
        do {
            return try context.fetch(request).first
        } catch {
            print("Erro ao buscar Imagem por ID: \(error)")
            return nil
        }
    }
    
    private static func getAtorById(context: NSManagedObjectContext, id: Int) -> Ator? {
        let request: NSFetchRequest<Ator> = Ator.fetchRequest()
        request.predicate = NSPredicate(format: "id == %@", id as NSNumber)
        do {
            return try context.fetch(request).first
        } catch {
            print("Erro ao buscar Ator por ID: \(error)")
            return nil
        }
    }
    
    private static func getFilmeHasAtor(context: NSManagedObjectContext, filme_id: Int, ator_id: Int) -> FilmeHasAtor? {
        let request: NSFetchRequest<FilmeHasAtor> = FilmeHasAtor.fetchRequest()
        request.predicate = NSPredicate(format: "filme_id == %@ AND ator_id == %@", filme_id as NSNumber, ator_id as NSNumber)
        do {
            return try context.fetch(request).first
        } catch {
            print("Erro ao buscar relação FilmeHasAtor por IDs: \(error)")
            return nil
        }
    }
}
