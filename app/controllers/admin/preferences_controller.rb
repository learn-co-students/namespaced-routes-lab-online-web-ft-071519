class Admin::PreferencesController < ApplicationController

    def index
        preferences = Preference.first_or_create
    end

    private
        def preference_params
            params.require(:preference).permit(:allow_create_songs, :allow_create_artists, :song_sort, :artist_sort)
        end
end
