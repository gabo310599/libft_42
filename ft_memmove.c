/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memmove.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gojeda <gojeda@student.42madrid.com>       +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2025/04/08 15:14:17 by gojeda            #+#    #+#             */
/*   Updated: 2025/04/08 15:14:21 by gojeda           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

void	*memmove(void *dest, const void *src, size_t n)
{
	unsigned char	*ptr_dest;
	unsigned char	*ptr_src;

	ptr_dest = (unsigned char *) dest;
	ptr_src = (unsigned char *) src;
	if (ptr_dest < ptr_src || ptr_dest >= ptr_src + n)
	{
		while (n--)
			*ptr_dest++ = *ptr_src++;
	}
	else
	{
		ptr_dest += n;
		ptr_src += n;
		while (n--)
			*(--ptr_dest) = *(--ptr_src);
	}
	return (dest);
}
