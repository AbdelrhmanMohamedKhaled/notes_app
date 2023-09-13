class AddNoteState {
	final bool isLoading;
	final String? error;
	  
	const AddNoteState({
		this.isLoading = false,
		this.error,
	});
	  
	AddNoteState copyWith({
		bool? isLoading,
		String? error,
	}) {
		return AddNoteState(
			isLoading: isLoading ?? this.isLoading,
			error: error ?? this.error,
		);
	}
}
