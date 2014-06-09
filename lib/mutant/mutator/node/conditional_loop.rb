module Mutant
  class Mutator
    class Node

      # Mutator for while expressions
      class ConditionalLoop < self

        handle(:until, :while)

        children :condition, :body

      private

        # Emit mutations
        #
        # @return [undefined]
        #
        # @api private
        #
        def dispatch
          emit_singletons
          emit_condition_mutations
          emit_body_mutations if body
          emit_body(nil)
          emit_body(RAISE)
        end

      end # While
    end # Node
  end # Mutator
end # Mutant
