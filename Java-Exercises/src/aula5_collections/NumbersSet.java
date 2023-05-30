package aula5_collections;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.Scanner;
import java.util.Set;

public class NumbersSet {

	public static void main(String[] args) {
		Locale.setDefault(Locale.US);
		Scanner sc = new Scanner(System.in);
		Integer inputNumber = null, randomNumber = null;
		
		Set<Integer> numbersList = new HashSet<Integer>();

		System.out.print("Quantos números serão adicionados à lista? ");
		int listAmount = sc.nextInt();
		while (listAmount < 2) {
			System.out.println("\nA lista deve ter no mínimo 2 números.");
			System.out.print("Por favor, digite novamente: ");
			listAmount = sc.nextInt();
		}
		
		System.out.println();
		
		// Adiciona items à lista
		for (int i = 0; i < listAmount; i++) {
			System.out.print("Digite o número " + (i+1) + "° número: ");
			inputNumber = sc.nextInt();
			while (inputNumber == randomNumber) {
				System.out.println("\nNúmero " + inputNumber + " digitado anteriormente.");
				System.out.print("Por favor, digite outro número: ");
				inputNumber = sc.nextInt();
			} 
			numbersList.add(inputNumber);
			randomNumber = inputNumber;
		}
		
		// Imprimindo itens
		Iterator<Integer> iteratorNumbers = numbersList.iterator();
		while(iteratorNumbers.hasNext()) 
			System.out.println(iteratorNumbers.next());
		
		
		sc.close();

	}

}

// Jeito 2
/*for (int i = 0; i < listAmount; i++) {
	System.out.print("Digite o número " + (i+1) + "° número: ");
	numbersList.add(sc.nextInt());
}*/

