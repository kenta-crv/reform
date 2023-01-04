module ApplicationHelper
  def default_meta_tags
    {
      site: "リフォーム一括見積ねっとで最安値リフォーム会社を比較",
      title:"<%= yield(:title) | ドライバドズ' %>",
      description: "リフォーム一括見積ねっとで最安値リフォーム会社を比較できる。",
      canonical: request.original_url,  # 優先されるurl
      charset: "UTF-8",
      reverse: true,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('favicon.ico'),  rel: 'apple-touch-icon' },
      ],
	    canonical: request.original_url  # 優先されるurl

    }
  end
end
