package test;

import simplenlg.framework.*;
import simplenlg.lexicon.*;
import simplenlg.realiser.english.*;
import simplenlg.phrasespec.*;

import java.util.Arrays;

import simplenlg.features.*;

public class Test {
        public static void main(String[] args) {
        	//instantiate only once
            Lexicon lexicon = Lexicon.getDefaultLexicon();
            NLGFactory nlgFactory = new NLGFactory(lexicon);
            Realiser realiser = new Realiser(lexicon);
            
            //basically just shows the input sentence
            //capitalizes the first word and adds punctuation
            //**1st EXAMPLE**//
            NLGElement s1 = nlgFactory.createSentence("my dog is happy");
            String output = realiser.realiseSentence(s1);
            System.out.println(output);
            
            //(createClause), createVerbPhrase, createNounPhrase, createPrepositionPhrase, createAdjectivePhrase, createAdverbPhrase 
            //(SPhraseSpec), VPPhraseSpec, NPPhraseSpec, PPPhraseSpec, AdjPhraseSpec, AdvPhraseSpec
            //setSubject, setObject, setVerb (addComplement)
            //addModifier()
            	//SPhraseSpec: addFrontModifier()
            	//SPhraseSpec: addPremodifier(), addPostmodifier()
            
            //setting the subject, verb, and object separately
            //**2nd EXAMPLE**//
            SPhraseSpec p = nlgFactory.createClause();
            p.setSubject("Mary");
            p.setVerb("chase");
            p.setObject("the monkey");
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //***************FEATURES***************//
            //others: MODAL, PASSIVE, PERFECT, PROGRRESSIVE
            
            //TENSE
            //PAST, PRESENT, FUTURE
            //**3rd EXAMPLE**//
            p.setFeature(Feature.TENSE, Tense.PAST);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //NEGATED
            //**4th EXAMPLE**//
            p.setFeature(Feature.NEGATED, true);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //INTERROGATIVE_TYPE
            //**5th EXAMPLE**//
            p.setFeature(Feature.INTERROGATIVE_TYPE, InterrogativeType.YES_NO);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //**6th EXAMPLE**//
            p.setFeature(Feature.INTERROGATIVE_TYPE, InterrogativeType.WHO_OBJECT);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //***************COMPLEMENT***************//
            //**7th EXAMPLE**//
            p.addComplement("very quickly");
            p.addComplement("despite her exhaustion");
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //***************ADJECTIVES VIA MODIFIER***************//
            //**8th EXAMPLE**//
            //just to reset
            p = nlgFactory.createClause();
            
            NPPhraseSpec subject = nlgFactory.createNounPhrase("Mary");
            NPPhraseSpec object = nlgFactory.createNounPhrase("the monkey");
            VPPhraseSpec verb = nlgFactory.createVerbPhrase("chase");
            subject.addModifier("fast");
            p.setSubject(subject);
            p.setObject(object);
            p.setVerb(verb);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //**9th EXAMPLE**//
            verb.addModifier("quickly"); 
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //***************MULTIPLE SUBJECTS, OBJECTS, COMPLEMENTS***************//
            //**10th EXAMPLE**//
            //just to reset
            p = nlgFactory.createClause();
            
            NPPhraseSpec subject1 = nlgFactory.createNounPhrase("Mary");
            NPPhraseSpec subject2 = nlgFactory.createNounPhrase("your", "giraffe");

            CoordinatedPhraseElement subj = nlgFactory.createCoordinatedPhrase(subject1, subject2); 
            p.setSubject(subj);
            p.setVerb("chases"); //output: chase
            p.setObject("the monkey");
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //**11th EXAMPLE**//
            NPPhraseSpec object1 = nlgFactory.createNounPhrase("the monkey");
            NPPhraseSpec object2 = nlgFactory.createNounPhrase("George");

            CoordinatedPhraseElement obj = nlgFactory.createCoordinatedPhrase(object1, object2); 
            obj.addCoordinate("Martha");
            p.setObject(obj);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //**12th EXAMPLE**//            
            obj.setFeature(Feature.CONJUNCTION, "or");
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //***************PREPOSITIONAL PHRASES***************//
            //**13th EXAMPLE**//
            //just to reset
            p = nlgFactory.createClause();
            p.setSubject("Mary");
            p.setVerb("chase"); //output: chases
            p.setObject("the monkey");
            
            NPPhraseSpec place = nlgFactory.createNounPhrase("park");
            place.setDeterminer("the");
            PPPhraseSpec pp = nlgFactory.createPrepositionPhrase();
            pp.addComplement(place);
            pp.setPreposition("in");
            
            p.addComplement(pp);
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //**14th EXAMPLE**//
            place.addPreModifier("leafy");
            output = realiser.realiseSentence(p); // Realiser created earlier.
            System.out.println(output);
            
            //***************MULTIPLE CLAUSES***************//
            //**15th EXAMPLE**//
            SPhraseSpec ss1 = nlgFactory.createClause("my cat", "like", "fish");
            SPhraseSpec ss2 = nlgFactory.createClause("my dog", "like", "big bones");
            SPhraseSpec ss3 = nlgFactory.createClause("my horse", "like", "grass");

            CoordinatedPhraseElement c = nlgFactory.createCoordinatedPhrase();
            c.addCoordinate(ss1);
            c.addCoordinate(ss2);
            c.addCoordinate(ss3);
            
            output = realiser.realiseSentence(c); // Realiser created earlier.
            System.out.println(output);
            
            //**16th EXAMPLE**//
            SPhraseSpec r = nlgFactory.createClause("I", "be", "happy");
            SPhraseSpec q = nlgFactory.createClause("I", "eat", "fish");
            
            q.setFeature(Feature.COMPLEMENTISER, "because");
            q.setFeature(Feature.TENSE, Tense.PAST);
            r.addComplement(q);
                    
            output = realiser.realiseSentence(r); // Realiser created earlier.
            System.out.println(output);
            
            //***************PARAGRAPH***************//
            //**17th EXAMPLE**//
            SPhraseSpec p1 = nlgFactory.createClause("Mary", "chase", "the monkey");
            SPhraseSpec p2 = nlgFactory.createClause("The monkey", "fight back"); 
            SPhraseSpec p3 = nlgFactory.createClause("Mary", "be", "nervous"); //be is 'is'
            
            DocumentElement d1 = nlgFactory.createSentence(p1);
            DocumentElement d2 = nlgFactory.createSentence(p2);
            DocumentElement d3 = nlgFactory.createSentence(p3);
            
            DocumentElement par1 = nlgFactory.createParagraph(Arrays.asList(d1, d2, d3));
            
            output = realiser.realiseSentence(par1); // Realiser created earlier.
            System.out.println(output);
        }

}
