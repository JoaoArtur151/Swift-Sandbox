/// Obtém a carta no índice especificado da pilha.
///
/// - Parameters:
///   - index: O índice da carta que será obtida.
///   - stack: A pilha que contém as cartas.
/// - Returns: A carta localizada no índice especificado.
func getCard(at index: Int, from stack: [Int]) -> Int {
  // Implemente a função getCard(at:from:)
    if index < stack.count{
        return stack[index]
    } else {
        return -1
    }
}

/// Substitui a carta existente no índice especificado por uma nova carta.
///
/// - Parameters:
///   - index: O índice da carta que será substituída.
///   - stack: A pilha que contém a carta a ser substituída.
///   - newCard: A nova carta que substituirá a carta existente.
/// - Returns: Uma nova pilha com a carta no índice especificado substituída por `newCard`.
func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
    if index < stack.count {
        var novaPilha = stack
        novaPilha[index] = newCard
        return novaPilha
    } else {
        print("Operação falhou, indice", index, "invalido")
        return stack
    }
}

/// Insere uma nova carta no topo da pilha.
///
/// - Parameters:
///   - newCard: A carta que será inserida.
///   - stack: A pilha onde a carta será inserida.
/// - Returns: Uma nova pilha com a carta inserida no topo.
func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  // Implemente a função insert(_:atTopOf:)
    var novaPilha = stack
    novaPilha.insert(newCard, at: 0)
    return novaPilha
}

/// Remove a carta no índice especificado da pilha.
///
/// - Parameters:
///   - index: O índice da carta que será removida.
///   - stack: A pilha que contém as cartas.
/// - Returns: Uma nova pilha sem a carta removida.
func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  // Implemente a função removeCard(at:from:)
    var novaPilha = stack
    novaPilha.remove(at: index)
    return novaPilha
}

/// Insere uma nova carta no índice especificado da pilha.
///
/// - Parameters:
///   - newCard: A carta que será inserida.
///   - index: O índice onde a carta será inserida.
///   - stack: A pilha que contém as cartas.
/// - Returns: Uma nova pilha com a carta inserida no índice especificado.
func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
    // Implemente a função insert(_:at:from:)
    var novaPilha = stack
    novaPilha.insert(newCard, at: index)
    return novaPilha
}

/// Verifica se a pilha possui a quantidade especificada de cartas.
///
/// - Parameters:
///   - stack: A pilha que será verificada.
///   - size: A quantidade esperada de cartas.
/// - Returns: `true` se a pilha tiver a quantidade especificada de cartas; caso contrário, `false`.
func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  // Implemente a função checkSizeOfStack(_:_)
    return stack.count == size
}

let cards = [1, 2, 3]

let card = getCard(at: 1, from: cards)
print(cards)

let card2 = setCard(at: 3, in: cards, to: 12)
print(card2)
