---
layout: default
title: "Research Project"
categories: current

gradient_dir: "top right"
gradient_start: "#e32fa5"
gradient_end: "#5862ff"
---

<span>**Update 6/27/22:** *While I am still participating in my schools research project, this description of the project has changed enough that this page deserves a rewrite. This is a project for later.*</span>

I am participating in my school’s (Princeton International School of Math and Science [PRIMS]) research program. In this program we are given two years to do research in some STEM field that we are interested in.

I am researching an area of mathematical-logic which studies relationships between formal languages using tools from abstract algebra and category theory.

This is more of an informal overview: I skip over a lot and make some gross generalizations and simplifications in order to get the general idea across. I also rely on your mathematical intuition to fill in the gaps. Finally, I attached some links at the bottom of each subsection if you want to read more.

## Formal Systems
"A formal system is an abstract structure used for inferring theorems from axioms according to a set of rules." ([Wikipedia: Formal Systems](https://en.wikipedia.org/wiki/Formal_system){:target="_blank"}) Often, these systems are formalized in terms of a formal language, a set of axioms, and a set of inference rules.

The formal language gives the set of rules by which sentences, or formulas, in the language are syntactically correct (e.g. make syntactic "sense"). Note the distinction from semantic correctness (logical "sense"). In English, the sentences "People who read books are smart. Joe reads books. Joe is not smart." are syntactically correct: Each sentence starts with a capital letter, ends with a period, etc. However, it does not make logical sense. It is therefore not semantically correct. If a sentence/formula is syntactically correct, it is said to be **well-formed**. Conversely, a **well-formed formula** is syntactically correct.

The inference rules tell how one well-formed formula (conclusion) can be logically inferred, or proved, from a set of given axioms (premises).

A quick example of such a system is given by sentential logic (aka propositional calculous). This is the "generic"-system you mat have learned about in an elementary computer science class. The set of "operators" are called **truth-functional connectives** and include $$\land$$ (and), $$\lor$$ (or), $$\neg$$ (not), $$\rightarrow$$ (if/if ... then ...), and $$\leftrightarrow$$ (iff / if .. only if ...). These connectives are juxtaposed by "variables" called **atomic symbols** such as $$a$$, $$b$$, or $$c$$. The atomic symbols may have the value $$T$$ (true) or $$F$$ (false). 

$$(a \lor b) \lor (\neg a \land \neg b) \tag{1}$$ 

is an example of a well-formed formula according the the language of sentential logic (LSL). However, 

$$ab\land c \neg$$

is not. An axiom of sentential logic is

$$a \lor \neg a$$

which is assumed always true. The sole inference rule of sentential logic is 

$$\frac{F, F \rightarrow G}{G}$$

where $$F$$ and $$G$$ are well-formed by LSL. This inference rule may read "If $$F$$ [is true], and $$F$$ implies $$G$$, then $$G$$ [is true]." Doesn't this make sense?

A well-formed formula is a **tautology** if every possible substitution of it's atomic symbols with $$T$$ or $$F$$ leads to a $$T$$ "outcome." These substitutions are called **valuations** or **interpretations**. Formula (1) is an example of a tautology since no matter what you substitute for $$a$$ and $$b$$, the result will be $$T$$. Try it!
        
A well-formed formula is called a **theorem** if it is derivable, or provable, by applying the systems inference rules to it's axioms.

A system is **complete** if every tautology is a theorem.

Sentential logic is complete.

Resources:
- [Wikipedia: Formal Systems](https://en.wikipedia.org/wiki/Formal_system){:target="_blank"}
- [Wikipedia: Completeness (logic)](https://en.wikipedia.org/wiki/Completeness_(logic)){:target="_blank"}
- [Wolfram MathWorld: Propositional Calculous](https://mathworld.wolfram.com/PropositionalCalculus.html){:target="_blank"}
- [Wikipedia: Propositional Calculous](https://en.wikipedia.org/wiki/Propositional_calculus){:target="_blank"}

## First-Order Logic
**First-order logic**, or predicate calculous, is a class of systems extended from sentential logic. In addition to the functionality given by sentential logic, first-order logic allows for the use of qualifiers such as $$\forall$$ (forall) and $$\exists$$ (exists), non-logical atomic symbols, as well as predicates which describe relations between these non-logical atomic symbols. Non-logical atomic symbols refer to those "variables" which need not have the value $$T$$ or $$F$$.

Zermelo-Fraenkel set theory (ZF) is the standard formalization of set theories' formal system. This will be very familiar. In this system $$\in$$ is a predicate describing a relation between some object (which may be a set itself) and a set. Consider the following axiom in ZF set theory: \begin{align}
    \forall x \forall y [\forall z(z \in x \leftrightarrow z \in y) \rightarrow x=y]
\end{align} Can you guess what this axiom defines?

Resources:
- [Wikipedia: First-order Logic](https://en.wikipedia.org/wiki/First-order_logic){:target="_blank"}

## Turing Machines

A **decision problem** is one which has a yes/no or true/false answer. A problem is **decidable** if it has such an answer. Otherwise, the problem is said to be **undecidable**.

"A **Turing machine** is a mathematical model of computation that defines an abstract machine that manipulates symbols on a strip of tape according to a table of rules" ([Wikipedia: Turing Machine](https://en.wikipedia.org/wiki/Turing_machine){:target="_blank"}). You can think of it as an algorithm. The **halting problem** is a decision problem that asks to determine whether a Turing machine will halt (e.g. terminate) for a given input.

A set is **recursively enumerable** if it's elements can be listed by a Turing machine. 

Resources:
- Basic Turing machine stuff: [Wikipedia: Turing Machine](https://en.wikipedia.org/wiki/Turing_machine){:target="_blank"}
- More in-depth Turing machine info: [Stanford Encyclopedia of Philosophy: Turing Machines](https://plato.stanford.edu/entries/turing-machine/){:target="_blank"}. The *Stanford Encyclopedia of Philosophy* has a lot of great logic-ish stuff.

## G&ouml;dels First Incompleteness Theorems

A formal system is **recursively enumerable** if it's theorems form a recursively enumerable set.

**G&ouml;del's Incompleteness Theorem** states that no recursively enumerable formal system strong enough to describe all truths about naturals is complete. In other words, in every recursively enumerable ... there are tautologies that are not theorems. Furthermore, there are a countably infinite number of these formulas. The weakest system strong enough to describe all truths about the naturals is given by Robinson's arithmetic, though Peano arithmetic is a stronger and more used system.

ZF, and stronger systems such as ZFC (ZF with axiom of choice), satisfy all the "requirements" of G&ouml;dels Incompleteness Theorem and are therefore incomplete. The continuum hypothesis is an example of one of those well-formed formulas. The same is true for the halting problem in the context of Turing machines. Extensions of ZF can assert the truthfulness of the continuum hypothesis as an axiom without leading to contradictions. Can you explain why? However, these systems will still have other unprovable tautologies.

Resources:
- [Stanford Encyclopedia of Philosophy: G&ouml;del's Incompleteness Theorem](https://plato.stanford.edu/entries/goedel-incompleteness/){:target="_blank"}
- [Wikipedia: Robinson arithmetic](https://en.wikipedia.org/wiki/Robinson_arithmetic){:target="_blank"}
- [Wikipedia: Peano arithmetic](https://en.wikipedia.org/wiki/Peano_axioms#Peano_arithmetic_as_first-order_theory){:target="_blank"}

# My Research Project
For my research project, I am studying the incompleteness of formal languages and their relationship to one another. As I learn more about the field, I hope to find a more specific question to ask. The question I put down on my proposal was more of a space-filler than anything else. I am having trouble asking a good question without understanding more about mathematical logic. That being said, there is something called Vaught's Conjecture that, assuming CH is false, is very poorly understood. In addition, there is something called the Finite Spectrum problem which is also poorly understood. My plan is to spend another few months learning about Model theory before I choose something more specific. Both these conjectures I could try to prove for some subset of the Models they concern, similarly to how Atticus Wang and Arun Kannan proved "stability results" for a special subset of the orthogonal groups [here](https://arxiv.org/abs/2202.09910). That being said, I would like to learn more mathematical logic before I commit to something.
