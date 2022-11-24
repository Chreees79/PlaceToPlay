module ApplicationHelper
  def bootstrap_class_for_flash(type)
    case type
      when 'notice' then "alert-info"
      when 'success' then "alert-success"
      when 'error' then "alert-danger"
      when 'alert' then "alert-warning"
    end
  end
  def bootstrap_title_for_flash(type)
    case type
      when 'notice' then "Information:"
      when 'success' then "succès !"
      when 'error' then "Erreur !"
      when 'alert' then "Attention !"
    end
  end

  def has_profile?
    current_user.is_artist || current_user.is_venue
  end

  def count_unread
    unread_conversations = 0
    my_conversations.each do |conversation|
      if conversation.unread?(current_user)
        unread_conversations += 1
      end
    end
    unread_conversations
  end

  def departements_select
    departements = [
      ['01 - Ain', '01'],
      ['02 - Aisne', '02'],
      ['03 - Allier', '03'],
      ['04 - Alpes de Haute Provence', '04'],
      ['05 - Hautes Alpes', '05'],
      ['06 - Alpes Maritimes', '06'],
      ['07 - Ardèche', '07'],
      ['08 - Ardennes', '08'],
      ['09 - Ariège', '09'],
      ['10 - Aube', '10'],
      ['11 - Aude', '11'],
      ['12 - Aveyron', '12'],
      ['13 - Bouches du Rhône', '13'],
      ['14 - Calvados', '14'],
      ['15 - Cantal', '15'],
      ['16 - Charente', '16'],
      ['17 - Charente Maritime', '17'],
      ['18 - Cher', '18'],
      ['19 - Corrèze', '19'],
      ['2A - Corse du Sud', '2A'],
      ['2B - Haute-Corse', '2B'],
      ["21 - Côte d'Or", '21'],
      ["22 - Côtes d'Armor", '22'],
      ['23 - Creuse', '23'],
      ['24 - Dordogne', '24'],
      ['25 - Doubs', '25'],
      ['26 - Drôme', '26'],
      ['27 - Eure', '27'],
      ['28 - Eure et Loir', '28'],
      ['29 - Finistère', '29'],
      ['30 - Gard', '30'],
      ['31 - Haute Garonne', '31'],
      ['32 - Gers', '32'],
      ['33 - Gironde', '33'],
      ['34 - Hérault', '34'],
      ['35 - Ille et Vilaine', '35'],
      ['36 - Indre', '36'],
      ['37 - Indre et Loire', '37'],
      ['38 - Isère', '38'],
      ['39 - Jura', '39'],
      ['40 - Landes', '40'],
      ['41 - Loir et Cher', '41'],
      ['42 - Loire', '42'],
      ['43 - Haute Loire', '43'],
      ['44 - Loire Atlantique', '44'],
      ['45 - Loiret', '45'],
      ['46 - Lot', '46'],
      ['47 - Lot et Garonne', '47'],
      ['48 - Lozère', '48'],
      ['49 - Maine et Loire', '49'],
      ['50 - Manche', '50'],
      ['51 - Marne', '51'],
      ['52 - Haute Marne', '52'],
      ['53 - Mayenne', '53'],
      ['54 - Meurthe et Moselle', '54'],
      ['55 - Meuse', '55'],
      ['56 - Morbihan', '56'],
      ['57 - Moselle', '57'],
      ['58 - Nièvre', '58'],
      ['59 - Nord', '59'],
      ['60 - Oise', '60'],
      ['61 - Orne', '61'],
      ['62 - Pas de Calais', '62'],
      ['63 - Puy de Dôme', '63'],
      ['64 - Pyrénées Atlantiques', '64'],
      ['65 - Hautes Pyrénées', '65'],
      ['66 - Pyrénées Orientales', '66'],
      ['67 - Bas Rhin', '67'],
      ['68 - Haut Rhin', '68'],
      ['69 - Rhône', '69'],
      ['70 - Haute Saône', '70'],
      ['71 - Saône et Loire', '71'],
      ['72 - Sarthe', '72'],
      ['73 - Savoie', '73'],
      ['74 - Haute Savoie', '74'],
      ['75 - Paris', '75'],
      ['76 - Seine Maritime', '76'],
      ['77 - Seine et Marne', '77'],
      ['78 - Yvelines', '78'],
      ['79 - Deux Sèvres', '79'],
      ['80 - Somme', '80'],
      ['81 - Tarn', '81'],
      ['82 - Tarn et Garonne', '82'],
      ['83 - Var', '83'],
      ['84 - Vaucluse', '84'],
      ['85 - Vendée', '85'],
      ['86 - Vienne', '86'],
      ['87 - Haute Vienne', '87'],
      ['88 - Vosges', '88'],
      ['89 - Yonne', '89'],
      ['90 - Territoire de Belfort', '90'],
      ['91 - Essonne', '91'],
      ['92 - Hauts de Seine', '92'],
      ['93 - Seine Saint Denis', '93'],
      ['94 - Val de Marne', '94'],
      ["95 - Val d'Oise", '95'],
      ['971 - Guadeloupe', '971'],
      ['972 - Martinique', '972'],
      ['973 - Guyane', '973'],
      ['974 - Réunion', '974'],
      ['975 - Saint Pierre et Miquelon', '975'],
      ['976 - Mayotte', '976']
    ]
  end
end
