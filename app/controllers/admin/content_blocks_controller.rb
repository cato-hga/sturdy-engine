module Admin
  class ContentBlocksController < Fae::StaticPagesController

    private

    def fae_pages
      [AboutUsPage, ArticlePage]
    end
  end
end
