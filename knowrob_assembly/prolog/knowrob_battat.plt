:- begin_tests(knowrob_battat).

:- use_module(library('semweb/rdf_db')).
:- use_module(library('semweb/rdfs')).
:- use_module(library('owl')).
:- use_module(library('owl_parser')).
:- use_module(library('swrl')).
:- use_module(library('knowrob_assembly')).
:- use_module(library('knowrob_planning')).

:- owl_parser:owl_parse('package://knowrob_assembly/owl/battat_airplane_test.owl').
:- owl_parser:owl_parse('package://knowrob_assembly/owl/battat_airplane_simulation.owl').

:- rdf_db:rdf_register_prefix(battat_toys, 'http://knowrob.org/kb/battat_toys.owl#', [keep(true)]).
:- rdf_db:rdf_register_prefix(battat_test, 'http://knowrob.org/kb/battat_airplane_test.owl#', [keep(true)]).
:- rdf_db:rdf_register_prefix(battat_sim, 'http://knowrob.org/kb/battat_airplane_simulation.owl#', [keep(true)]).
:- rdf_db:rdf_register_prefix(knowrob_assembly, 'http://knowrob.org/kb/knowrob_assembly.owl#', [keep(true)]).
:- rdf_db:rdf_register_prefix(params, 'http://knowrob.org/kb/knowrob_paramserver.owl#', [keep(true)]).
:- rdf_db:rdf_register_prefix(swrl, 'http://www.w3.org/2003/11/swrl#', [keep(true)]).
:- rdf_db:rdf_register_prefix(rdf, 'http://www.w3.org/1999/02/22-rdf-syntax-ns#', [keep(true)]).
  
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Test generating agenda
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

:- rdf_meta test_agenda_items(t).
test_agenda_items(Assumed) :-
  assembly_test_agenda(_,Agenda),
  agenda_items_sorted(Agenda,Actual),
  test_agenda_items(Actual,Assumed), !.
test_agenda_items([],[]).
test_agenda_items([A|As],[B|Bs]) :-
  agenda_item_description(A,B),
  test_agenda_items(As,Bs).


test(assembly_agenda_create_BattatPlaneBody) :-
  rdf_instance_from_class(battat_toys:'BattatPlaneBodyWithoutWindow', BattatPlaneBody),
  rdf_assert(BattatPlaneBody, rdf:type, owl:'NamedIndividual'),
  agenda_create(BattatPlaneBody, battat_test:'AgendaStrategy_1', Agenda),
  once(( rdfs_individual_of(Agenda, knowrob_planning:'Agenda'),
         rdf_has(Agenda, knowrob_planning:'strategy', battat_test:'AgendaStrategy_1') )),
  assertz(assembly_test_agenda(BattatPlaneBody,Agenda)),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

test(assembly_perform_BattatPlaneBody_usesConnection) :-
  assembly_test_agenda(_,Agenda),
  agenda_perform_next(Agenda),
  agenda_write(Agenda).

:- end_tests(knowrob_battat).
